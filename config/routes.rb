Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api , defaults: { format: :json } do
    #scope module: :v1 do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update, :destroy]
      resources :articles, only: [:index, :create, :show, :update, :destroy]
    end
  end
end
