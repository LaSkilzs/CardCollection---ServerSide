require 'rails_helper'

describe 'makes routes' do
  it 'should route to makes index' do
    expect(get 'api/v1/makes').to route_to('api/v1/makes#index')
  end

  it 'should route to makes show' do
    expect(get 'api/v1/makes/1').to route_to('api/v1/makes#show', id: 1)
  end
end