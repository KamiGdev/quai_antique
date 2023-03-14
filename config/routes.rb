Rails.application.routes.draw do
  mount Avo::Engine, at: Avo.configuration.root_path
  get '/contact', to: "static_pages#contact"
  get '/about', to: "static_pages#about"
  root "static_pages#home"
end
