require 'rails_helper'

describe 'cars routes' do
  it 'should route to cars index' do 
    expect(get 'api/v1/cars').to route_to('api/v1/cars#index')
  end

  it 'should route to cars show' do
    expect(get 'api/v1/cars/1').to route_to('api/v1/cars#show', id: 1)
  end

end