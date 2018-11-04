Rails.application.routes.draw do
  resources :profiles, only: :index
end
