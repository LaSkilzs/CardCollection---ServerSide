Rails.application.routes.draw do
  
  
  namespace 'api' do
    namespace 'v1' do
      resources :cars,  only:[:index, :show]
      resources :makes, only:[:index, :show]
      resources :users, only:[:index, :create] 
      post 'login', to: 'users#login'
  end
 end
end
