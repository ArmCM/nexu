require 'rails_helper'

RSpec.describe "Brands API", type: :request do
  describe "GET /api/v1/brands" do
    it "returns a list of brands with average_price" do
      brand = Brand.create!(name: "Toyota")
      brand.models.create!(name: "fake", average_price: 20000)

      get "/api/v1/brands"

      expect(response).to have_http_status(:ok)

      json = JSON.parse(response.body)
      expect(json).to be_an(Array)
      expect(json.first["name"]).to eq("Toyota")
      expect(json.first["average_price"]).to eq(20000)
    end
  end

  describe "POST /api/v1/brands" do
    it "creates a new brand" do
      expect {
        post "/api/v1/brands", params: { name: "BYD" }
      }.to change(Brand, :count).by(1)

      expect(response).to have_http_status(:created)

      json = JSON.parse(response.body)
      expect(json["name"]).to eq("BYD")
    end

    it "returns error when name is missing" do
      post "/api/v1/brands", params: {}

      expect(response).to have_http_status(:unprocessable_entity)

      json = JSON.parse(response.body)
      expect(json["error"]).to include("Name can't be blank")
    end
  end
end
