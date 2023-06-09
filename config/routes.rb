Rails.application.routes.draw do
  resources :dishes, only: [:show]
  resources :menus, only: [:index, :show]

  get '/search', to: "menus#search"

  resources :reservations do
    collection do
      get 'refresh_date'
    end
  end

  get '/select_slot/:slot', to: "reservations#select_slot"

  devise_for :users
  mount Avo::Engine, at: Avo.configuration.root_path

  get '/contact', to: "contact#index"
  post '/contact', to: "contact#create"

  root "static_pages#home"
end
