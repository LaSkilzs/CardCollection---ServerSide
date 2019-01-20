require 'rails_helper'

RSpec.describe Car, type: :model do
  describe '#model validations' do
    it 'should test that factory is vaild' do
      expect(FactoryBot.build :car).to be_valid
    end

    it 'should validate the presence of a name' do
      car = FactoryBot.build :car, name: ""
      expect(car).not_to be_valid
      expect(car.errors.messages[:name]).to include("can't be blank")
    end

    it 'should validate the presence of a model' do
      car = FactoryBot.build :car, model: ""
      expect(car).not_to be_valid
      expect(car.errors.messgages[:model]).to include("can't be blank")
    end

    it 'should validate that price is a string ' do
      car = FactoryBot.create :car, price: ""
      expect(car).not_to be_valid
      expect(car.errors.messages[:price]).to include("can't be blank")
    end

    it 'should validate that favorite is a boolean' do
      expect(car.favorite).be_kind_of(Boolean)
    end

    it 'should validate that summary is not null' do
      car = FactoryBot.build :car, summary: ""
      expect(car.summary).not_to be_valid
      expeect(car.errors.messages[:summary]).to include("can't be blank")
    end

    it 'should validate that horsepower is an integer' do
      expect(car.horsepower).be_kind_of(Integer)
    end

    it 'should validate that max_speed is a float' do 
      expect(car.max_speed).be_kind_of(Float)
    end

    it 'should validate that acceleration(secs) is a float' do
      expect(car.acceleration_secs).be_kind_of(Float)
    end

    it 'should validate that drive is a string' do
      car = FactoryBot.build :car, drive: ""
      expect(car).not_to be_valid
      expect(car.errors.messages[:drive]).to include("can't be blank")
    end

    it 'should validate that body is a string' do
      car = FactoryBot.build :car, body: ""
      expect(car.body).not_to be_valid
      expect(car.errors.messages[:body]).to include("can't be blank")
    end

    it 'should validate that image1 is a string' do
      car = FactoryBot.build :car, image1: ""
      expect(car.image1).not_to be_valid
      expect(car.errors.messages[:image1]).to include("can't be blank")
    end

    it 'should validate that image2 is a string' do
      car = FactoryBot.build :car, image2: ""
      expect(car.image2).not_to be_valid
      expect(car.errors.messages[:image2]).to include("can't be blank")
    end

    it 'should validate that make_id is not empty' do
      car = FactoryBot.build :car, make_id: ""
      expect(car).not_to be_valid
      expect(car.errors.messages[:make_id]).to include("can't be blank")
    end
  end
end
