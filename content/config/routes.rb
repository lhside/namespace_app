Content::Engine.routes.draw do
  resources :categories, only: [:index, :show]
  resources :posts,      only: [:index, :show]
end
