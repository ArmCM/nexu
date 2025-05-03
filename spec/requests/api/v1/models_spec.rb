require 'rails_helper'

RSpec.describe "Models API", type: :request do
  describe "GET /api/v1/models" do

    it "returns a list of models with average_price and brand" do

      brand = Brand.create!(name: "Chevrolet")
      model = Model.create!(name: "Onix", average_price: "20000", brand: brand)

      get "/api/v1/models"

      expect(response).to have_http_status(:ok)

      json = JSON.parse(response.body)
      expect(json.count).to eq(1)
      expect(json).to be_an(Array)
      expect(json.first["name"]).to eq("Onix")
      expect(json.first["average_price"]).to eq("20000")
      expect(json.first["brand"]).to eq("Chevrolet")

    end
  end

  describe "PATCH /api/v1/models" do
    it "update a model" do

      brand = Brand.create!(name: "Chevrolet")
      model = Model.create!(name: "Onix", average_price: "20000", brand: brand)

      patch "/api/v1/models/#{model.id}", params: { name: "fake name", average_price: "40000" }

      expect(response).to have_http_status(:ok)

      json = JSON.parse(response.body)
      expect(json["name"]).to eq("fake name")
      expect(json["average_price"]).to eq("40000")
    end

    it "show errors when try update a model with invalid values" do

      brand = Brand.create!(name: "Chevrolet")
      model = Model.create!(name: "Onix", average_price: "20000", brand: brand)

      patch "/api/v1/models/#{model.id}", params: { name: "", average_price: "" }

      expect(response).to have_http_status(:unprocessable_entity)

      json = JSON.parse(response.body)
      expect(json["error"]).to include("Name can't be blank")
      expect(json["error"]).to include("Average price can't be blank")

    end
  end
end
