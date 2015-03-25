Games::Application.routes.draw do
  #get 'scrambles/new'

  #get 'scrambles/show'

  #get 'rock_paper_scissors/new'

  #get 'rock_paper_scissors/show'

  root 'games#index'
  
  resources 'games', only: [:index]
  resources "secret_numbers", only: [:new, :show]
  resources "rock_paper_scissors", only: [:new, :show]
  resources "scrambles", only: [:new, :show]
end
