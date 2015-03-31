Rails.application.routes.draw do
  root 'movies#index'  
  resources :movies, only: [:index, :new, :show, :create, :destroy]  
end
