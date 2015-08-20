Rails.application.routes.draw do

  root 'products#index'
  resources :products

  scope '/api' do
    scope '/beta' do
      scope '/JSON' do
        get '/' => 'search_api#search_page', as: :search
        scope '/:id' do
        put '/' => 'search_api#update' 
          # scope '/apikey=' do
          # end
        end
      end
    end
  end

 