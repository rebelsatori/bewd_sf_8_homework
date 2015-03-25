Games::Application.routes.draw do
  resources 'games', only: [:index]
  resources 'secret_numbers', only: [:new, :show]
  resources 'rock_paper_scissors', only: [:new, :show]
  resources 'scramblers', only: [:new, :create, :show]
end
