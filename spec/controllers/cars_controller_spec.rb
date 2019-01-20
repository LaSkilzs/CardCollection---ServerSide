require 'rails_helper'


RSpec.describe Api::V1::CarsController do
  
  describe '#index' do
    it 'should return success response' do 
      get :index
      expect(response).to have_http_status(:ok)
    end
    
    it 'should return proper json' do
      get :index
      json JSON.parse(response.body)
      json_data = json[:data]
      expect(json_data.length).to eq(16)
    end
  end

  describe '#show' do
    it 'should return success response' do 
      get :show
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
      get :show
      json JSON.parse(response.body)
      json_data = json[:data]
      expcet(json_data.length).to eq(16)
    end
  end
end