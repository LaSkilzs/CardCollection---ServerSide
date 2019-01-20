require 'rails_helper'


describe Api::V1::MakesController do
  describe '#index' do
    it 'should return success response' do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
      get :index
      json = JSON.parse(response.body)
      json_data = json[:data]
      expect(json_data.length).to eq(1)
    end
  end

  describe '#show' do
    it 'should return success response' do 
      get :show
      expect(response).to have_http_status(:ok)
    end 

    it 'should return proper json' do
      get :show
      json = JSON.parse(response.body)
      json_data = json[:data]
      expect(json_data.length).to eq(1)
    end
  end
end