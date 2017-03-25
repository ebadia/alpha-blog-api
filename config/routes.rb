Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api , defaults: { format: :json } do
    #scope module: :v1 do
    namespace :v1 do
      resources :users
      resources :articles
    end
  end
end
