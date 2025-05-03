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

    def update
        model = Model.find(params[:id])
    
        unless model.update(name: params[:name], average_price: params[:average_price])
            render json: { error: model.errors.full_messages }, status: :unprocessable_entity
            return
        end
        
        render json: model, status: :ok
    end
end
