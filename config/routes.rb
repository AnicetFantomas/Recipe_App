Rails.application.routes.draw do
  resources :shopping_lists
  resources :foods
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes, only: %i[index new create show destroy] do
    resources :recipe_foods, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: %i[index show] do
    resources :foods, only: %i[index new create show destroy]
    resources :recipes, only: %i[index new create show destroy] do
      resources :recipes_foods, only: %i[new create]
    end
  end

    root to: 'users#index' 

  get '/public_recipes', to: 'public_recipes#index'

end
