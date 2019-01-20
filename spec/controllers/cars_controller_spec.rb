require 'rails_helper'


RSpec.describe Api::V1::CarsController do
  
  describe 'GET #index' do
    before do
      get :index
    end

    it 'should return success response' do 
      expect(response).to have_http_status(:ok)
    end
    
    it 'should return json body that contains car attributes' do
      json_response = json JSON.parse(response.body)
      expect(hash_body.keys).to match_array([:name, :model, :price, :summary, :horsepower, :favorite, :max_speed, :image2, :image1, :body, :drive, :make_id, :acceleration_secs])
    end
  end

  describe 'GET #show' do
    
    before do
      get :show, id: car.id
    end

    let(:make) {Make.create(name: "Toyota")}
    let(:car) {Car.create(name: "Oasis", model: "CRX", price: "$60,000", summary: "Nice Car", horsepower: 100, favorite: false, max_speed: 75, image2: "n/a", image1: 'n/a', body: "4WD", drive: "SUV", make_id: 8, acceleration_secs: 18.4)}

    it 'should return success response' do 
      expect(response).to have_http_status(:ok)
    end

    it 'should return JSON body containing proper Car attributes' do
      hash_body = nil
      
      expect { hash_body = JSON.parse(response.body).with_indifferent_access }.not_to raise_exception
      
      expect(hash_body.keys).to match_array([:name, :model, :price, :summary, :horsepower, :favorite, :max_speed, :image2, :image1, :body, :drive, :make_id, :acceleration_secs])

      expect(hash_body).match({
        name: "Oasis", 
        model: "CRX", 
        price: "$60,000", 
        summary: "Nice Car", 
        horsepower: 100, 
        favorite: false, 
        max_speed: 75, 
        image2: "n/a", 
        image1: 'n/a', 
        body: "4WD", 
        drive: "SUV", 
        make_id: 8, 
        acceleration_secs: 18.4
      })



    end
  end

end