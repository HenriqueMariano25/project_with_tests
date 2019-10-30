Rails.application.routes.draw do
  resources :personagens, only: :index
end
