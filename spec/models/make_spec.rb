require 'rails_helper'

RSpec.describe Make, type: :model do
  it 'should test that factory is valid' do
    expect(FactoryBot.build :make).to be_valid
  end
 it 'should validate the presence of name' do
  make = FactoryBot.build :make, name: ""
  expect(make).not_to be_valid
  expect(make.errors.messages[:name]).to include("can't be blank")
 end

end
