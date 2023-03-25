Rails.application.routes.draw do
  resources :reservations do
    collection do
      get 'refresh_date'
    end
  end

  devise_for :users
  mount Avo::Engine, at: Avo.configuration.root_path
  get '/contact', to: "contact#index"
  post '/contact', to: "contact#create"
  get '/about', to: "static_pages#about"
  root "static_pages#home"
end
